.class public Lcom/htc/laputa/engine/aidl/SvrData$PRAM;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PRAM"
.end annotation


# static fields
.field public static final ADMINAREAID:Ljava/lang/String; = "adminareaid"

.field public static final ADMINLEVEL:Ljava/lang/String; = "adminlevel"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORYARRAY:Ljava/lang/String; = "categoryarray"

.field public static final COMMANDTYPE:Ljava/lang/String; = "commandtype"

.field public static final CONTENTSTORE_CATALOGID:Ljava/lang/String; = "catalogid"

.field public static final CONTENTSTORE_COMMANDTYPE:Ljava/lang/String; = "ContentStoreCommandType"

.field public static final CONTENTSTORE_CONTENTEXTRASTYPE:Ljava/lang/String; = "ContentStoreContentExtrasType"

.field public static final CONTENTSTORE_CONTENTPARAM:Ljava/lang/String; = "ContentStoreContentTypeParam"

.field public static final CONTENTSTORE_ITEMTYPE:Ljava/lang/String; = "ContentStoreItemType"

.field public static final CONTENTSTORE_ITEM_ID:Ljava/lang/String; = "ContentStoreItemId"

.field public static final CONTENTSTORE_ORICOMMANDTYPE:Ljava/lang/String; = "ContentStoreOriCommandType"

.field public static final CONTENTSTORE_PAY_METHOD:Ljava/lang/String; = "ContentStorePayMethod"

.field public static final CONTENTSTORE_PRICE_INDEX:Ljava/lang/String; = "ContentStorePriceIndex"

.field public static final CONTENTSTORE_WEB_PAY_METHODS:Ljava/lang/String; = "ContentStoreWebPayMethods"

.field public static final CONTENTSTORE_WEB_PAY_URL:Ljava/lang/String; = "ContentStoreWebPayUrl"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final DATABUNDLE:Ljava/lang/String; = "databundle"

.field public static final DEBUG_COMMANDTYPE:Ljava/lang/String; = "DebugCommandType"

.field public static final ENABLEHSNOSEARCH:Ljava/lang/String; = "enablehsnosearch"

.field public static final GROUPINGTYPE:Ljava/lang/String; = "groupingtype"

.field public static final HSNO:Ljava/lang/String; = "hsno"

.field public static final KEYWORD:Ljava/lang/String; = "keyword"

.field public static final LAT:Ljava/lang/String; = "lat"

.field public static final LON:Ljava/lang/String; = "lon"

.field public static final MATCHLV:Ljava/lang/String; = "matchlv"

.field public static final MAXCOUNT:Ljava/lang/String; = "maxcount"

.field public static final ONLINE:Ljava/lang/String; = "online"

.field public static final RANGE:Ljava/lang/String; = "range"

.field public static final RECENTID:Ljava/lang/String; = "recentid"

.field public static final RETTYPE:Ljava/lang/String; = "rettype"

.field public static final RETURNLV:Ljava/lang/String; = "returnlv"

.field public static final SORTORDER:Ljava/lang/String; = "sortorder"

.field public static final STREETID:Ljava/lang/String; = "streetid"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$PRAM;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
