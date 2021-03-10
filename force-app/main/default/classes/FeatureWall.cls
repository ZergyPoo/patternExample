public virtual with sharing class FeatureWall {

    @TestVisible
    private static FeatureWall instance;

    public static FeatureWall getInstance() {
        if (instance == null) {
            instance = new FeatureWall();
        }

        return instance;
    }

    public interface FeatureGate {

        Boolean isEnabled();
        List<FeatureGate> getDependencies();
    }
}
