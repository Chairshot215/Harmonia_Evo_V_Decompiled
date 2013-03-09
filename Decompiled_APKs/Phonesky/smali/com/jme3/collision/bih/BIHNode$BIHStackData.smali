.class public final Lcom/jme3/collision/bih/BIHNode$BIHStackData;
.super Ljava/lang/Object;
.source "BIHNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/collision/bih/BIHNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BIHStackData"
.end annotation


# instance fields
.field private final max:F

.field private final min:F

.field private final node:Lcom/jme3/collision/bih/BIHNode;


# direct methods
.method constructor <init>(Lcom/jme3/collision/bih/BIHNode;FF)V
    .locals 0
    .parameter "node"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->node:Lcom/jme3/collision/bih/BIHNode;

    .line 143
    iput p2, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->min:F

    .line 144
    iput p3, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->max:F

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->node:Lcom/jme3/collision/bih/BIHNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->min:F

    return v0
.end method

.method static synthetic access$200(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->max:F

    return v0
.end method
