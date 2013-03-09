.class public Lcom/google/android/googlequicksearchbox/QsbContext;
.super Landroid/content/ContextWrapper;
.source "QsbContext.java"


# instance fields
.field private final mAppId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "base"
    .parameter "appId"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 35
    iput p2, p0, Lcom/google/android/googlequicksearchbox/QsbContext;->mAppId:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "i"

    .prologue
    .line 39
    const-string v0, "test_app_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/QsbContext;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->get(I)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbContext;->mAppId:I

    return v0
.end method
