.class final Lcom/google/android/gm/MenuHandler$7;
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

.field final synthetic val$initialIndex:I

.field final synthetic val$operation:Ljava/lang/Runnable;

.field final synthetic val$persistence:Lcom/google/android/gm/persistence/Persistence;


# direct methods
.method constructor <init>(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;[Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler$7;->val$persistence:Lcom/google/android/gm/persistence/Persistence;

    iput-object p2, p0, Lcom/google/android/gm/MenuHandler$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/MenuHandler$7;->val$autoAdvanceOptionValues:[Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gm/MenuHandler$7;->val$initialIndex:I

    iput-object p5, p0, Lcom/google/android/gm/MenuHandler$7;->val$operation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$7;->val$persistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler$7;->val$autoAdvanceOptionValues:[Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gm/MenuHandler$7;->val$initialIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setAutoAdvanceMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler$7;->val$operation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1246
    return-void
.end method
