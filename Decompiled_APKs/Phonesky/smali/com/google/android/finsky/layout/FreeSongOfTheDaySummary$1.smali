.class Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;
.super Ljava/lang/Object;
.source "FreeSongOfTheDaySummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$navManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$owner:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    iput-object p2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->val$navManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->val$owner:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->val$navManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->val$owner:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 68
    return-void
.end method
