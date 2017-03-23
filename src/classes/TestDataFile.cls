/*
 * @description 
 */
public with sharing class TestDataFile {
    /*
     * @description type of the data unit, data, reference or duplicate
     */
    public enum DataUnitType { Data, Ref, Dup }

    /* 
     * @description field action on the data unit
     */
    public with sharing class DataUnitAction {
        public String cmd;
        public String jPath;
        public String value;
    }

    /*
     * @description data unit
     */
    public with sharing class DataUnit {
        public DataUnitType unitType;
        public Object data;
        public String path;
        public DataUnitAction[] actions;
    }

    /*
     * @description data group
     */ 
    public with sharing class DataGroup {
        public Map<String, DataUnit> dataMap;
    }

    /*
     * Static resource file name for the test data file
     */
    public String resourceName { get; set; }
    
	public TestDataFile(String resFileName) {
		resourceName = resFileName;
	}


}