.class public Lcom/htc/opensense/plugin/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "version"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    .line 20
    iput p2, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    .line 21
    iput-object p3, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/htc/opensense/plugin/Feature;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
