.class public final Lcom/htc/store/provider/table/GetMoreTTL$ColumnNames;
.super Ljava/lang/Object;
.source "GetMoreTTL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/provider/table/GetMoreTTL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnNames"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final ONLINE_TTL:Ljava/lang/String; = "online_ttl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
