.class public abstract Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "MultislotVoiceAction.java"


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mSlotValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/actions/SlotValue;",
            ">;"
        }
    .end annotation
.end field

.field protected mSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "intentAction"
    .parameter "prefix"
    .parameter "countdownNeeded"
    .parameter "showDisambig"

    .prologue
    .line 54
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mAccount:Ljava/lang/String;

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mAccount:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    new-array v3, v2, [Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 65
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    aget-object v5, v3, v1

    const-class v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotValue;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    const-class v1, Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V
    .locals 1
    .parameter "slot"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public buildListTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "detail"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidSlots()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 106
    .local v2, spec:Lcom/google/android/voicesearch/actions/SlotSpec;
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->isMandatory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v3

    .line 110
    .local v3, value:Lcom/google/android/voicesearch/actions/SlotValue;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/SlotValue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v2           #spec:Lcom/google/android/voicesearch/actions/SlotSpec;
    .end local v3           #value:Lcom/google/android/voicesearch/actions/SlotValue;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    const/4 v1, 0x0

    .line 119
    .end local v1           #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    :cond_3
    return-object v1
.end method

.method public getSlotSpec(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotSpec;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 160
    .local v1, slot:Lcom/google/android/voicesearch/actions/SlotSpec;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    .end local v1           #slot:Lcom/google/android/voicesearch/actions/SlotSpec;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSlotToReceiveAccountSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotValue;

    return-object v0
.end method

.method public getSlots()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public requiresMailAccount()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public requiresMailAccountSelector()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mAccount:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 1
    .parameter "slotId"
    .parameter "value"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/SlotValue;

    return-object v0
.end method

.method public shouldPersistDisambig()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, ": {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/actions/SlotValue;

    .line 191
    .local v3, value:Lcom/google/android/voicesearch/actions/SlotValue;
    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Lcom/google/android/voicesearch/actions/SlotValue;
    :cond_1
    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v3, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 80
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 81
    .local v1, keyArray:[Ljava/lang/String;
    array-length v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlotValues:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 90
    return-void
.end method
