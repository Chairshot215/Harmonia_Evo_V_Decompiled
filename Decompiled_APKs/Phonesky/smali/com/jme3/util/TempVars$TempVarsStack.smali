.class Lcom/jme3/util/TempVars$TempVarsStack;
.super Ljava/lang/Object;
.source "TempVars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/TempVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempVarsStack"
.end annotation


# instance fields
.field index:I

.field tempVars:[Lcom/jme3/util/TempVars;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jme3/util/TempVars;

    iput-object v0, p0, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jme3/util/TempVars$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jme3/util/TempVars$TempVarsStack;-><init>()V

    return-void
.end method
