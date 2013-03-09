.class public Lcom/htc/android/mail/ContactStruct;
.super Ljava/lang/Object;
.source "ContactStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ContactStruct$ContactMethod;,
        Lcom/htc/android/mail/ContactStruct$PhoneData;
    }
.end annotation


# instance fields
.field public company:Ljava/lang/String;

.field public contactmethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ContactStruct$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public notes:Ljava/lang/String;

.field public phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ContactStruct$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public photoBytes:[B

.field public photoType:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public addContactmethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "kind"
    .parameter "data"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/htc/android/mail/ContactStruct;->contactmethodList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ContactStruct;->contactmethodList:Ljava/util/List;

    .line 68
    :cond_0
    new-instance v0, Lcom/htc/android/mail/ContactStruct$ContactMethod;

    invoke-direct {v0}, Lcom/htc/android/mail/ContactStruct$ContactMethod;-><init>()V

    .line 69
    .local v0, st:Lcom/htc/android/mail/ContactStruct$ContactMethod;
    iput-object p1, v0, Lcom/htc/android/mail/ContactStruct$ContactMethod;->kind:Ljava/lang/String;

    .line 70
    iput-object p2, v0, Lcom/htc/android/mail/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    .line 71
    iput-object p3, v0, Lcom/htc/android/mail/ContactStruct$ContactMethod;->type:Ljava/lang/String;

    .line 72
    iput-object p4, v0, Lcom/htc/android/mail/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/htc/android/mail/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public addPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/htc/android/mail/ContactStruct;->phoneList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ContactStruct;->phoneList:Ljava/util/List;

    .line 53
    :cond_0
    new-instance v0, Lcom/htc/android/mail/ContactStruct$PhoneData;

    invoke-direct {v0}, Lcom/htc/android/mail/ContactStruct$PhoneData;-><init>()V

    .line 54
    .local v0, st:Lcom/htc/android/mail/ContactStruct$PhoneData;
    iput-object p1, v0, Lcom/htc/android/mail/ContactStruct$PhoneData;->data:Ljava/lang/String;

    .line 55
    iput-object p2, v0, Lcom/htc/android/mail/ContactStruct$PhoneData;->type:Ljava/lang/String;

    .line 56
    iput-object p3, v0, Lcom/htc/android/mail/ContactStruct$PhoneData;->label:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/htc/android/mail/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
