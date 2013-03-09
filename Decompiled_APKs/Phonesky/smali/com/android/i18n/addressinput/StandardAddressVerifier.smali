.class public Lcom/android/i18n/addressinput/StandardAddressVerifier;
.super Ljava/lang/Object;
.source "StandardAddressVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;,
        Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;
    }
.end annotation


# static fields
.field private static final DEFAULT_REFINER:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;


# instance fields
.field protected final mProblemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mRefiner:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

.field protected final mRootVerifier:Lcom/android/i18n/addressinput/FieldVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;-><init>()V

    sput-object v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->DEFAULT_REFINER:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/FieldVerifier;)V
    .locals 2
    .parameter "rootVerifier"

    .prologue
    .line 53
    sget-object v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->DEFAULT_REFINER:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    sget-object v1, Lcom/android/i18n/addressinput/StandardChecks;->PROBLEM_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;Ljava/util/Map;)V
    .locals 1
    .parameter "rootVerifier"
    .parameter "refiner"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/FieldVerifier;",
            "Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, problemMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/util/List<Lcom/android/i18n/addressinput/AddressProblemType;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mRootVerifier:Lcom/android/i18n/addressinput/FieldVerifier;

    .line 82
    iput-object p2, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mRefiner:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    .line 83
    sget-object v0, Lcom/android/i18n/addressinput/StandardChecks;->PROBLEM_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mProblemMap:Ljava/util/Map;

    .line 84
    return-void
.end method


# virtual methods
.method protected getProblemIterator(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/Iterator;
    .locals 2
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressField;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mProblemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/AddressProblemType;>;"
    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 199
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method protected postVerify(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V
    .locals 0
    .parameter "verifier"
    .parameter "address"
    .parameter "problems"

    .prologue
    .line 170
    return-void
.end method

.method public verify(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V
    .locals 3
    .parameter "address"
    .parameter "problems"

    .prologue
    .line 87
    new-instance v1, Lcom/android/i18n/addressinput/NotifyingListener;

    invoke-direct {v1, p0}, Lcom/android/i18n/addressinput/NotifyingListener;-><init>(Ljava/lang/Object;)V

    .line 88
    .local v1, listener:Lcom/android/i18n/addressinput/NotifyingListener;
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyAsync(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 90
    :try_start_0
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/NotifyingListener;->waitLoadingEnd()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public verifyAsync(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 2
    .parameter "address"
    .parameter "problems"
    .parameter "listener"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;-><init>(Lcom/android/i18n/addressinput/StandardAddressVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    .local v0, verifier:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method protected verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z
    .locals 8
    .parameter "script"
    .parameter "verifier"
    .parameter "field"
    .parameter "value"
    .parameter "problems"

    .prologue
    .line 179
    invoke-virtual {p0, p3}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->getProblemIterator(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/Iterator;

    move-result-object v7

    .line 180
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/i18n/addressinput/AddressProblemType;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressProblemType;

    .local v3, prob:Lcom/android/i18n/addressinput/AddressProblemType;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 182
    invoke-virtual/range {v0 .. v6}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyProblemField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    .end local v3           #prob:Lcom/android/i18n/addressinput/AddressProblemType;
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected verifyProblemField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z
    .locals 6
    .parameter "script"
    .parameter "verifier"
    .parameter "problem"
    .parameter "field"
    .parameter "datum"
    .parameter "problems"

    .prologue
    .line 208
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/FieldVerifier;->check(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    move-result v0

    return v0
.end method
