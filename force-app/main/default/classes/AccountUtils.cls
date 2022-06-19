/**
 * Trailhead
 * Module: Apex と .NET の基本
 * .NET の概念の Lightning プラットフォームへの対応付け
 */
public with sharing class AccountUtils {
    public AccountUtils() {

    }

    public static List<Account> accountsByState(String stateCode) {
        List<Account> accts = [Select Id FROM Account Where BillingState = :stateCode];
        return accts;
    }
}
