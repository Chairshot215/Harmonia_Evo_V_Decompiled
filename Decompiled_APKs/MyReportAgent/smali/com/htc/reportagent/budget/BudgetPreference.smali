.class public Lcom/htc/reportagent/budget/BudgetPreference;
.super Ljava/lang/Object;
.source "BudgetPreference.java"


# static fields
.field private static final KEYS:[Ljava/lang/String; = null

.field public static final KEY_ALL_DL_APP_USAGE:Ljava/lang/String; = "AllDlAppUsage"

.field public static final KEY_ALL_DL_BASELINE:Ljava/lang/String; = "AllDlBaseline"

.field public static final KEY_ALL_DL_STATS:Ljava/lang/String; = "AllDlStats"

.field public static final KEY_ALL_TOTAL_APP_USAGE:Ljava/lang/String; = "AllTotalAppUsage"

.field public static final KEY_ALL_TOTAL_BASELINE:Ljava/lang/String; = "AllTotalBaseline"

.field public static final KEY_ALL_TOTAL_STATS:Ljava/lang/String; = "AllTotalStats"

.field public static final KEY_ALL_UL_APP_USAGE:Ljava/lang/String; = "AllUlAppUsage"

.field public static final KEY_ALL_UL_BASELINE:Ljava/lang/String; = "AllUlBaseline"

.field public static final KEY_ALL_UL_STATS:Ljava/lang/String; = "AllUlStats"

.field public static final KEY_MOBILE_DL_APP_USAGE:Ljava/lang/String; = "MobileDlAppUsage"

.field public static final KEY_MOBILE_DL_BASELINE:Ljava/lang/String; = "MobileDlBaseline"

.field public static final KEY_MOBILE_DL_STATS:Ljava/lang/String; = "MobileDlStats"

.field public static final KEY_MOBILE_TOTAL_APP_USAGE:Ljava/lang/String; = "MobileTotalAppUsage"

.field public static final KEY_MOBILE_TOTAL_BASELINE:Ljava/lang/String; = "MobileTotalBaseline"

.field public static final KEY_MOBILE_TOTAL_STATS:Ljava/lang/String; = "MobileTotalStats"

.field public static final KEY_MOBILE_UL_APP_USAGE:Ljava/lang/String; = "MobileUlAppUsage"

.field public static final KEY_MOBILE_UL_BASELINE:Ljava/lang/String; = "MobileUlBaseline"

.field public static final KEY_MOBILE_UL_STATS:Ljava/lang/String; = "MobileUlStats"

.field public static final KEY_OTHER_DL_APP_USAGE:Ljava/lang/String; = "OtherDlAppUsage"

.field public static final KEY_OTHER_DL_BASELINE:Ljava/lang/String; = "OtherDlBaseline"

.field public static final KEY_OTHER_DL_STATS:Ljava/lang/String; = "OtherDlStats"

.field public static final KEY_OTHER_TOTAL_APP_USAGE:Ljava/lang/String; = "OtherTotalAppUsage"

.field public static final KEY_OTHER_TOTAL_BASELINE:Ljava/lang/String; = "OtherTotalBaseline"

.field public static final KEY_OTHER_TOTAL_STATS:Ljava/lang/String; = "OtherTotalStats"

.field public static final KEY_OTHER_UL_APP_USAGE:Ljava/lang/String; = "OtherUlAppUsage"

.field public static final KEY_OTHER_UL_BASELINE:Ljava/lang/String; = "OtherUlBaseline"

.field public static final KEY_OTHER_UL_STATS:Ljava/lang/String; = "OtherUlStats"

.field private static final TAG:Ljava/lang/String; = null

.field private static final _DEBUG:Z = false

.field private static final preferenceName:Ljava/lang/String; = "Budget"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mValues:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const-class v0, Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/budget/BudgetPreference;->TAG:Ljava/lang/String;

    .line 50
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MobileDlBaseline"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MobileDlStats"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MobileDlAppUsage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MobileUlBaseline"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MobileUlStats"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MobileUlAppUsage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MobileTotalBaseline"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MobileTotalStats"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MobileTotalAppUsage"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "OtherDlBaseline"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "OtherDlStats"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "OtherDlAppUsage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "OtherUlBaseline"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OtherUlStats"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "OtherUlAppUsage"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "OtherTotalBaseline"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "OtherTotalStats"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "OtherTotalAppUsage"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "AllDlBaseline"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "AllDlStats"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "AllDlAppUsage"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "AllUlBaseline"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AllUlStats"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "AllUlAppUsage"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "AllTotalBaseline"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "AllTotalStats"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "AllTotalAppUsage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mContext:Landroid/content/Context;

    .line 89
    sget-object v2, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mValues:[J

    .line 91
    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mContext:Landroid/content/Context;

    const-string v3, "Budget"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, preferences:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mValues:[J

    sget-object v3, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method static getAlarmBaseline(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 130
    const-string v3, "Budget"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "AlarmBaseline"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 132
    .local v1, value:J
    return-wide v1
.end method

.method static setAlarmBaseline(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 139
    const-string v2, "Budget"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AlarmBaseline"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 6

    .prologue
    .line 104
    iget-object v3, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mContext:Landroid/content/Context;

    const-string v4, "Budget"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 107
    sget-object v3, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mValues:[J

    aget-wide v4, v4, v1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void
.end method

.method public get(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 123
    sget-object v1, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mValues:[J

    aget-wide v1, v1, v0

    .line 125
    :goto_1
    return-wide v1

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method public removeAll()V
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mContext:Landroid/content/Context;

    const-string v3, "Budget"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public set(Ljava/lang/String;J)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 114
    sget-object v1, Lcom/htc/reportagent/budget/BudgetPreference;->KEYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/htc/reportagent/budget/BudgetPreference;->mValues:[J

    aput-wide p2, v1, v0

    .line 116
    const/4 v1, 0x1

    .line 118
    :goto_1
    return v1

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
