@IsTest
private class RequestAppAnalytics_Test {

    @IsTest
    private static void activate() {
        
        // Setup
        LmaPackage p = new LmaPackage().ns('any');
        LmaVersion v = new LmaVersion(p);
        LmaLicense l = new LmaLicense(v);
        sfLma__Package__c pck = (sfLma__Package__c) p.persist();


        // Exercise
        new RequestAppAnalytics().execute(null);


        // Verify
        System.assertEquals(pck.sfLma__Package_ID__c, RequestAppAnalytics.requests[0].PackageIds);
    }
}