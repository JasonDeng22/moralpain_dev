/*
 * MoralDistress API
 * MoralDistress API.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.ResiliencyResources;
import org.openapitools.client.model.Submission;
import org.openapitools.client.model.Survey;
import org.openapitools.client.model.VisitedResiliencyResources;
import org.junit.Test;
import org.junit.Ignore;
import org.junit.Assert;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for UserApi
 */
@Ignore
public class UserApiTest {

    private final UserApi api = new UserApi();

    /**
     * Get resiliency resources
     *
     * Fetch the recommended resiliency resources from the database. 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getResiliencyResourcesTest() throws ApiException {
        ResiliencyResources response = api.getResiliencyResources();

        // TODO: test validations
    }
    /**
     * Get the MDQ
     *
     * Fetch the latest moral distress questionnaire (MDQ) from the database. 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getSurveyTest() throws ApiException {
        Survey response = api.getSurvey();

        // TODO: test validations
    }
    /**
     * Submit a completed MDQ
     *
     * Submit a completed Moral Distress Questionnaire and Moral Distress Score to the database. 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void submitSurveyTest() throws ApiException {
        Submission submission = null;
        String response = api.submitSurvey(submission);

        // TODO: test validations
    }
    /**
     * Submit visited resiliency resources
     *
     * Submit the list of resources visited by this user to the database. 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void submitVisitedResiliencyResourcesTest() throws ApiException {
        VisitedResiliencyResources visitedResiliencyResources = null;
        String response = api.submitVisitedResiliencyResources(visitedResiliencyResources);

        // TODO: test validations
    }
}
