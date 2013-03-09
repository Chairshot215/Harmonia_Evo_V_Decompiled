.class public Lcom/htc/android/epst/FileExt;
.super Ljava/lang/Object;
.source "FileExt.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c08c8cb16d2c05L


# instance fields
.field private ext:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "ext"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/htc/android/epst/FileExt;->ext:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/htc/android/epst/FileExt;->name:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/FileExt;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/FileExt;->name:Ljava/lang/String;

    return-object v0
.end method
