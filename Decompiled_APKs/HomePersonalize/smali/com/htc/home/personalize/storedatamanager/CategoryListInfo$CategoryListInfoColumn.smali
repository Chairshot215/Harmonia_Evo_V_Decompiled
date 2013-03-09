.class public final Lcom/htc/home/personalize/storedatamanager/CategoryListInfo$CategoryListInfoColumn;
.super Ljava/lang/Object;
.source "CategoryListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/storedatamanager/CategoryListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryListInfoColumn"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final PARENT_CATEGORY_ID:Ljava/lang/String; = "parentCategoryID"

.field public static final PARENT_CATEGORY_NAME:Ljava/lang/String; = "parentCategoryName"

.field public static final TTL:Ljava/lang/String; = "ttl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
