.class public Lcom/htc/android/mail/pim/vcard/ContactStruct;
.super Ljava/lang/Object;
.source "ContactStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;,
        Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;,
        Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    }
.end annotation


# instance fields
.field public IMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;",
            ">;"
        }
    .end annotation
.end field

.field public anniversary:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public company:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public contactmethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field public last_update_time:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public notes:Ljava/lang/String;

.field public orgType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public photoBytes:[B

.field public photoType:Ljava/lang/String;

.field public title:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->orgType:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->company:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->title:Ljava/util/List;

    .line 97
    return-void
.end method


# virtual methods
.method public addContactmethod(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "kind"
    .parameter
    .parameter "type"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    .line 157
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, sData:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;

    invoke-direct {v2}, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;-><init>()V

    .line 159
    .local v2, st:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    iput-object p1, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->kind:Ljava/lang/String;

    .line 160
    iput-object v1, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    .line 161
    iput-object p3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->type:Ljava/lang/String;

    .line 162
    iput-object p4, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    .line 163
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v1           #sData:Ljava/lang/String;
    .end local v2           #st:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    :cond_1
    return-void
.end method

.method public addContactmethodCustom(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .parameter "kind"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, types:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    .line 176
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    .local v1, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;

    invoke-direct {v2}, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;-><init>()V

    .line 178
    .local v2, st:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    iput-object p1, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->kind:Ljava/lang/String;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    .line 180
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->type:Ljava/lang/String;

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v1           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #st:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    :cond_1
    return-void
.end method

.method public addIMList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->IMList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->IMList:Ljava/util/List;

    .line 193
    :cond_0
    new-instance v0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;

    invoke-direct {v0}, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;-><init>()V

    .line 194
    .local v0, st:Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;
    iput-object p1, v0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->type:Ljava/lang/String;

    .line 195
    iput-object p2, v0, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->data:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->IMList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public addPhone(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "type"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, item:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;

    invoke-direct {v2}, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;-><init>()V

    .line 123
    .local v2, st:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    iput-object v1, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    .line 124
    iput-object p2, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->type:Ljava/lang/String;

    .line 125
    iput-object p3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v1           #item:Ljava/lang/String;
    .end local v2           #st:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    :cond_1
    return-void
.end method

.method public addPhoneCustom(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, types:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    .local v1, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;

    invoke-direct {v2}, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;-><init>()V

    .line 140
    .local v2, st:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    .line 141
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->type:Ljava/lang/String;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    .line 143
    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #st:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    :cond_1
    return-void
.end method
