.class Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;
.super Ljava/lang/Object;
.source "SuggestionLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedRemoveFromHistory(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

.field final synthetic val$suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;->val$suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;->val$suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 267
    return-void
.end method
