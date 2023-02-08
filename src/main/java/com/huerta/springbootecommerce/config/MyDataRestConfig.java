package com.huerta.springbootecommerce.config;

import com.huerta.springbootecommerce.entity.Product;
import com.huerta.springbootecommerce.entity.ProductCategory;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Configuration
public class MyDataRestConfig implements RepositoryRestConfigurer {

  private EntityManager entityManager;

  @Autowired
  public MyDataRestConfig(EntityManager entityManager) {
    this.entityManager = entityManager;
  }

  @Override
  public void configureRepositoryRestConfiguration(
    RepositoryRestConfiguration config,
    CorsRegistry cors
  ) {
    HttpMethod[] theUnsupHttpMethods = {
      HttpMethod.PUT,
      HttpMethod.POST,
      HttpMethod.DELETE,
    };
    // disable http methods for Product: PUT, POST and DELETE
    config
      .getExposureConfiguration()
      .forDomainType(Product.class)
      .withItemExposure(
        ((metdata, httpMethods) -> httpMethods.disable(theUnsupHttpMethods))
      )
      .withCollectionExposure(
        ((metdata, httpMethods) -> httpMethods.disable(theUnsupHttpMethods))
      );

    // disable http methods for ProductCategory: PUT, POST and DELETE
    config
      .getExposureConfiguration()
      .forDomainType(ProductCategory.class)
      .withItemExposure(
        ((metdata, httpMethods) -> httpMethods.disable(theUnsupHttpMethods))
      )
      .withCollectionExposure(
        ((metdata, httpMethods) -> httpMethods.disable(theUnsupHttpMethods))
      );

    // call an interneal helper metehod
    exposeIds(config);
  }

  private void exposeIds(RepositoryRestConfiguration config) {
    // expose entity ids

    // -get a list of all entity classes form the entity manager
    Set<EntityType<?>> entities =
      this.entityManager.getMetamodel().getEntities();

    // - create an array of the entity types
    List<Class> entityClasses = new ArrayList<>();

    // - get the entity types for the entities
    for (EntityType tempEntityType : entities) {
      entityClasses.add(tempEntityType.getJavaType());
    }

    // - expose the entity ids for the array of entity/domanin types
    Class[] domainTypes = entityClasses.toArray(new Class[0]);
    config.exposeIdsFor(domainTypes);
  }
}
