.class public Lcom/google/android/gm/LabelOperations$Operation;
.super Ljava/lang/Object;
.source "LabelOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Operation"
.end annotation


# instance fields
.field public final mAdd:Z

.field public final mLabel:Lcom/google/android/gm/provider/Label;

.field final synthetic this$0:Lcom/google/android/gm/LabelOperations;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/provider/Label;Z)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "add"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gm/LabelOperations$Operation;->this$0:Lcom/google/android/gm/LabelOperations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/google/android/gm/LabelOperations$Operation;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 292
    iput-boolean p3, p0, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/provider/Label;ZLcom/google/android/gm/LabelOperations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/LabelOperations$Operation;-><init>(Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/provider/Label;Z)V

    return-void
.end method
