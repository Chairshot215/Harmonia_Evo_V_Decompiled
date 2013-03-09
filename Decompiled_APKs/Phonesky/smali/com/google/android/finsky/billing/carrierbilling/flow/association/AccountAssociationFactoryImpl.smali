.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;
.super Ljava/lang/Object;
.source "AccountAssociationFactoryImpl.java"


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mSmsAddress:Ljava/lang/String;

.field private final mSmsPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dfeApi"
    .parameter "smsAddress"
    .parameter "smsPrefix"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 17
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsAddress:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsPrefix:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mSmsPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
