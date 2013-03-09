.class Lcom/android/calculator2/Logic$TriggerSecretCodeTask;
.super Landroid/os/AsyncTask;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Logic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSecretCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Logic;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/Logic;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/calculator2/Logic$TriggerSecretCodeTask;->this$0:Lcom/android/calculator2/Logic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/Logic;Lcom/android/calculator2/Logic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/android/calculator2/Logic$TriggerSecretCodeTask;-><init>(Lcom/android/calculator2/Logic;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 485
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v2

    instance-of v0, v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    aget-object v0, p1, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 487
    aget-object v0, p1, v2

    check-cast v0, Landroid/content/Context;

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calculator2/hide/SecretCodeHandler;->triggerSecretCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
