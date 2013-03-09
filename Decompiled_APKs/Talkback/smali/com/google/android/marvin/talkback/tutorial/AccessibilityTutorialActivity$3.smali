.class Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$3;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->finish()V

    .line 159
    return-void
.end method
