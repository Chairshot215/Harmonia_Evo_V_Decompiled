.class Lcom/google/android/finsky/navigationmanager/NavigationManager$4;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$continueUrl:Ljava/lang/String;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$externalReferrer:Ljava/lang/String;

.field final synthetic val$offerType:I

.field final synthetic val$referrerUrl:Ljava/lang/String;

.field final synthetic val$returnAfterPurchase:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput p4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$offerType:I

    iput-object p5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$referrerUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$externalReferrer:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$continueUrl:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$returnAfterPurchase:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iget v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$offerType:I

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$referrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$externalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$continueUrl:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;->val$returnAfterPurchase:Z

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 627
    return-void
.end method
