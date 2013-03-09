.class public Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthToken"
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "token"

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->mAccount:Ljava/lang/String;

    .line 547
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->mToken:Ljava/lang/String;

    .line 548
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->mToken:Ljava/lang/String;

    return-object v0
.end method
