.class Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchaseStatusListener"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mContinueUrl:Ljava/lang/String;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mExternalReferrer:Ljava/lang/String;

.field private final mReferrerCookie:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "referrerCookie"
    .parameter "continueUrl"

    .prologue
    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2009
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mAccount:Landroid/accounts/Account;

    .line 2010
    iput-object p2, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 2011
    iput-object p3, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mExternalReferrer:Ljava/lang/String;

    .line 2012
    iput-object p4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mReferrerCookie:Ljava/lang/String;

    .line 2013
    iput-object p5, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mContinueUrl:Ljava/lang/String;

    .line 2014
    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 2000
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;Ljava/lang/String;)V
    .locals 8
    .parameter "purchaseStatusResponse"
    .parameter "debugEventName"

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mExternalReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mReferrerCookie:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseStatusListener;->mContinueUrl:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseInitiator;->processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V

    .line 2021
    return-void
.end method
