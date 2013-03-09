.class public Lcom/htc/android/epst/FilePath;
.super Ljava/lang/Object;
.source "FilePath.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x596e65ddfb02f207L


# instance fields
.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "path"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/htc/android/epst/FilePath;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/htc/android/epst/FilePath;->path:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/FilePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/FilePath;->path:Ljava/lang/String;

    return-object v0
.end method
