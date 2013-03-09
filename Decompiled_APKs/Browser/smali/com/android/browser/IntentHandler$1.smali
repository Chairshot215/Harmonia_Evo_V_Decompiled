.class final Lcom/android/browser/IntentHandler$1;
.super Landroid/os/AsyncTask;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/IntentHandler;->handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$newUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/browser/IntentHandler$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/browser/IntentHandler$1;->val$newUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/IntentHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "unused"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/browser/IntentHandler$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/browser/IntentHandler$1;->val$newUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method
