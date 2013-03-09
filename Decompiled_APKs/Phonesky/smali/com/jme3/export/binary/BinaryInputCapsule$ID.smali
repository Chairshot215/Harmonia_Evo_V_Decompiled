.class Lcom/jme3/export/binary/BinaryInputCapsule$ID;
.super Ljava/lang/Object;
.source "BinaryInputCapsule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/export/binary/BinaryInputCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ID"
.end annotation


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    iput p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule$ID;->id:I

    .line 1359
    return-void
.end method
