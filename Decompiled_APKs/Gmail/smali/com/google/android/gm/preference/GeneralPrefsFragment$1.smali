.class Lcom/google/android/gm/preference/GeneralPrefsFragment$1;
.super Landroid/os/AsyncTask;
.source "GeneralPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/preference/GeneralPrefsFragment;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/google/android/gm/preference/GeneralPrefsFragment;

.field final synthetic val$suggestions:Landroid/provider/SearchRecentSuggestions;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/GeneralPrefsFragment;Landroid/provider/SearchRecentSuggestions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;->this$0:Lcom/google/android/gm/preference/GeneralPrefsFragment;

    iput-object p2, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;->val$suggestions:Landroid/provider/SearchRecentSuggestions;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;->val$suggestions:Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method
