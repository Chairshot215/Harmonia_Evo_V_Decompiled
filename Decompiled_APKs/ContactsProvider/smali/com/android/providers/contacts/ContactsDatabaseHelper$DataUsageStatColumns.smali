.class public final Lcom/android/providers/contacts/ContactsDatabaseHelper$DataUsageStatColumns;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageStatColumns"
.end annotation


# static fields
.field public static final CONCRETE_DATA_ID:Ljava/lang/String; = "data_usage_stat.data_id"

.field public static final CONCRETE_ID:Ljava/lang/String; = "data_usage_stat.stat_id"

.field public static final CONCRETE_LAST_TIME_USED:Ljava/lang/String; = "data_usage_stat.last_time_used"

.field public static final CONCRETE_TIMES_USED:Ljava/lang/String; = "data_usage_stat.times_used"

.field public static final CONCRETE_USAGE_TYPE:Ljava/lang/String; = "data_usage_stat.usage_type"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final LAST_TIME_USED:Ljava/lang/String; = "last_time_used"

.field public static final TIMES_USED:Ljava/lang/String; = "times_used"

.field public static final USAGE_TYPE_INT:Ljava/lang/String; = "usage_type"

.field public static final USAGE_TYPE_INT_CALL:I = 0x0

.field public static final USAGE_TYPE_INT_LONG_TEXT:I = 0x1

.field public static final USAGE_TYPE_INT_SHORT_TEXT:I = 0x2

.field public static final _ID:Ljava/lang/String; = "stat_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 688
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
