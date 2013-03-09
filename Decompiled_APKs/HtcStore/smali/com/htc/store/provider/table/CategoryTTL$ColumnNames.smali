.class public final Lcom/htc/store/provider/table/CategoryTTL$ColumnNames;
.super Ljava/lang/Object;
.source "CategoryTTL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/provider/table/CategoryTTL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnNames"
.end annotation


# static fields
.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ONLINE_TTL:Ljava/lang/String; = "online_ttl"

.field public static final REST_API_TYPE:Ljava/lang/String; = "rest_api_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
