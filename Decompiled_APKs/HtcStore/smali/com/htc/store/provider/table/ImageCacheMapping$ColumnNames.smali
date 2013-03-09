.class public final Lcom/htc/store/provider/table/ImageCacheMapping$ColumnNames;
.super Ljava/lang/Object;
.source "ImageCacheMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/provider/table/ImageCacheMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnNames"
.end annotation


# static fields
.field public static final EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
