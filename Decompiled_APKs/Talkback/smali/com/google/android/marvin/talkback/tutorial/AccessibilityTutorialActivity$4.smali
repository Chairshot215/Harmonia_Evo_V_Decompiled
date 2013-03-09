.class Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$4;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$4;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$4;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->finish()V

    .line 166
    return-void
.end method
