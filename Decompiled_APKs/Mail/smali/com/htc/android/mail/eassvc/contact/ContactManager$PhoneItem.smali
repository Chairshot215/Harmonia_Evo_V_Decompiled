.class Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;
.super Ljava/lang/Object;
.source "ContactManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/contact/ContactManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneItem"
.end annotation


# instance fields
.field phoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

.field type:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "type"
    .parameter "phone"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iput p2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->type:I

    .line 117
    iput-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->phoneList:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->type:I

    .line 110
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->phoneList:Ljava/util/ArrayList;

    .line 111
    return-void
.end method


# virtual methods
.method hasPhone(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, phone:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 123
    .end local v1           #phone:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method removePhone(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, phone:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$PhoneItem;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    .end local v1           #phone:Ljava/lang/String;
    :cond_1
    return-void
.end method
