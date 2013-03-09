.class final Lcom/google/android/gm/MenuHandler$6;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MenuHandler;->displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$autoAdvanceOptionValues:[Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$operation:Ljava/lang/Runnable;

.field final synthetic val$persistence:Lcom/google/android/gm/persistence/Persistence;


# direct methods
.method constructor <init>(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler$6;->val$persistence:Lcom/google/android/gm/persistence/Persistence;

    iput-object p2, p0, Lcom/google/android/gm/MenuHandler$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/MenuHandler$6;->val$autoAdvanceOptionValues:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gm/MenuHandler$6;->val$operation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichItem"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$6;->val$persistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler$6;->val$autoAdvanceOptionValues:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setAutoAdvanceMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 1233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1234
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$6;->val$operation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1235
    return-void
.end method
