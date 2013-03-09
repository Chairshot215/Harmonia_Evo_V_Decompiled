.class public Lcom/android/vcard/VCardEntryConstructor;
.super Ljava/lang/Object;
.source "VCardEntryConstructor.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mCurrentEntry:Lcom/android/vcard/VCardEntry;

.field private final mEntryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "vCard"

    sput-object v0, Lcom/android/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/high16 v0, -0x4000

    invoke-direct {p0, v0, v1, v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"
    .parameter "targetCharset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    .line 77
    iput p1, p0, Lcom/android/vcard/VCardEntryConstructor;->mVCardType:I

    .line 78
    iput-object p2, p0, Lcom/android/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 79
    return-void
.end method


# virtual methods
.method public addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V
    .locals 1
    .parameter "entryHandler"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    .line 101
    iget-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    return-void
.end method

.method public onEntryEnded()V
    .locals 6

    .prologue
    .line 112
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry;->consolidateFields()V

    .line 113
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntryHandler;

    .line 114
    .local v0, entryHandler:Lcom/android/vcard/VCardEntryHandler;
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    invoke-interface {v0, v4}, Lcom/android/vcard/VCardEntryHandler;->onEntryCreated(Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 117
    .end local v0           #entryHandler:Lcom/android/vcard/VCardEntryHandler;
    :cond_0
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 118
    .local v3, size:I
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    add-int/lit8 v5, v3, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    .line 120
    .local v2, parent:Lcom/android/vcard/VCardEntry;
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2, v4}, Lcom/android/vcard/VCardEntry;->addChild(Lcom/android/vcard/VCardEntry;)V

    .line 121
    iput-object v2, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    .line 125
    .end local v2           #parent:Lcom/android/vcard/VCardEntry;
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    return-void

    .line 123
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    goto :goto_1
.end method

.method public onEntryStarted()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/android/vcard/VCardEntry;

    iget v1, p0, Lcom/android/vcard/VCardEntryConstructor;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    .line 107
    iget-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryStack:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .locals 1
    .parameter "property"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentEntry:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardEntry;->addProperty(Lcom/android/vcard/VCardProperty;)V

    .line 131
    return-void
.end method

.method public onVCardEnded()V
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntryHandler;

    .line 95
    .local v0, entryHandler:Lcom/android/vcard/VCardEntryHandler;
    invoke-interface {v0}, Lcom/android/vcard/VCardEntryHandler;->onEnd()V

    goto :goto_0

    .line 97
    .end local v0           #entryHandler:Lcom/android/vcard/VCardEntryHandler;
    :cond_0
    return-void
.end method

.method public onVCardStarted()V
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntryHandler;

    .line 88
    .local v0, entryHandler:Lcom/android/vcard/VCardEntryHandler;
    invoke-interface {v0}, Lcom/android/vcard/VCardEntryHandler;->onStart()V

    goto :goto_0

    .line 90
    .end local v0           #entryHandler:Lcom/android/vcard/VCardEntryHandler;
    :cond_0
    return-void
.end method
