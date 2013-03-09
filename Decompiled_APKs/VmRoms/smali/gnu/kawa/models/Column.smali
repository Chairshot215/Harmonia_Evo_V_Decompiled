.class public Lgnu/kawa/models/Column;
.super Lgnu/kawa/models/Box;
.source "Column.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lgnu/kawa/models/Box;-><init>()V

    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method
