.class public Lcom/google/android/voicesearch/actions/ContactAlternates;
.super Ljava/lang/Object;
.source "ContactAlternates.java"


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/ContactAlternates;->mContacts:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactAlternates;->mContacts:Ljava/util/List;

    return-object v0
.end method
