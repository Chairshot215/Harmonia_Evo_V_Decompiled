.class public Lcom/google/android/voicesearch/actions/CorrectionContact;
.super Lcom/google/android/voicesearch/actions/Contact;
.source "CorrectionContact.java"


# instance fields
.field private mAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/ContactAlternates;)V
    .locals 6
    .parameter "contact"
    .parameter "alternates"

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getType()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/CorrectionContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/voicesearch/actions/ContactAlternates;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/voicesearch/actions/ContactAlternates;)V
    .locals 0
    .parameter "name"
    .parameter "address"
    .parameter "typeString"
    .parameter "type"
    .parameter "alternates"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iput-object p5, p0, Lcom/google/android/voicesearch/actions/CorrectionContact;->mAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;

    .line 31
    return-void
.end method


# virtual methods
.method public getAlternates()Lcom/google/android/voicesearch/actions/ContactAlternates;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CorrectionContact;->mAlternates:Lcom/google/android/voicesearch/actions/ContactAlternates;

    return-object v0
.end method
