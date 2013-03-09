.class public Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/pluginmanager/data/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeValue"
.end annotation


# instance fields
.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "t"
    .parameter "v"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;->type:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/htc/opensense/pluginmanager/data/MetaData$TypeValue;->value:Ljava/lang/String;

    .line 71
    return-void
.end method
