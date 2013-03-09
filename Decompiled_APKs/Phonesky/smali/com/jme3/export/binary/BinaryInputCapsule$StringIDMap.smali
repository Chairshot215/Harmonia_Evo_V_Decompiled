.class Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
.super Ljava/lang/Object;
.source "BinaryInputCapsule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/export/binary/BinaryInputCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringIDMap"
.end annotation


# instance fields
.field public keys:[Ljava/lang/String;

.field public values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;-><init>()V

    return-void
.end method
