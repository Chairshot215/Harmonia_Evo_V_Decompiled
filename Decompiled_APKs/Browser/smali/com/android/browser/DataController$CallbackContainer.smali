.class Lcom/android/browser/DataController$CallbackContainer;
.super Ljava/lang/Object;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/DataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackContainer"
.end annotation


# instance fields
.field args:[Ljava/lang/Object;

.field replyTo:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/DataController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/browser/DataController$CallbackContainer;-><init>()V

    return-void
.end method
