.class public Lgnu/text/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/text/Options$OptionInfo;
    }
.end annotation


# static fields
.field public static final BOOLEAN_OPTION:I = 0x1

.field public static final STRING_OPTION:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "unknown option name"


# instance fields
.field first:Lgnu/text/Options$OptionInfo;

.field infoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/text/Options$OptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field last:Lgnu/text/Options$OptionInfo;

.field previous:Lgnu/text/Options;

.field valueTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lgnu/text/Options;)V
    .locals 0
    .parameter "previous"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    .line 30
    return-void
.end method

.method private error(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 1
    .parameter "message"
    .parameter "messages"

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/16 v0, 0x65

    invoke-virtual {p2, v0, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 95
    return-void
.end method

.method static valueOf(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "info"
    .parameter "argument"

    .prologue
    .line 71
    iget v0, p0, Lgnu/text/Options$OptionInfo;->kind:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 73
    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 4
    .parameter "key"
    .parameter "kind"
    .parameter "defaultValue"
    .parameter "documentation"

    .prologue
    .line 51
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    .line 55
    :cond_0
    new-instance v0, Lgnu/text/Options$OptionInfo;

    invoke-direct {v0}, Lgnu/text/Options$OptionInfo;-><init>()V

    .line 56
    .local v0, info:Lgnu/text/Options$OptionInfo;
    iput-object p1, v0, Lgnu/text/Options$OptionInfo;->key:Ljava/lang/String;

    .line 57
    iput p2, v0, Lgnu/text/Options$OptionInfo;->kind:I

    .line 58
    iput-object p3, v0, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    .line 59
    iput-object p4, v0, Lgnu/text/Options$OptionInfo;->documentation:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lgnu/text/Options;->first:Lgnu/text/Options$OptionInfo;

    if-nez v1, :cond_2

    .line 61
    iput-object v0, p0, Lgnu/text/Options;->first:Lgnu/text/Options$OptionInfo;

    .line 64
    :goto_0
    iput-object v0, p0, Lgnu/text/Options;->last:Lgnu/text/Options$OptionInfo;

    .line 65
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0

    .line 53
    .end local v0           #info:Lgnu/text/Options$OptionInfo;
    :cond_1
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate option key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .restart local v0       #info:Lgnu/text/Options$OptionInfo;
    :cond_2
    iget-object v1, p0, Lgnu/text/Options;->last:Lgnu/text/Options$OptionInfo;

    iput-object v0, v1, Lgnu/text/Options$OptionInfo;->next:Lgnu/text/Options$OptionInfo;

    goto :goto_0
.end method

.method public add(Ljava/lang/String;ILjava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 1
    .parameter "key"
    .parameter "kind"
    .parameter "documentation"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public get(Lgnu/text/Options$OptionInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 186
    move-object v1, p0

    .line 187
    .local v1, options:Lgnu/text/Options;
    :goto_0
    if-eqz v1, :cond_4

    .line 189
    move-object v0, p1

    .line 191
    .local v0, info:Lgnu/text/Options$OptionInfo;
    :goto_1
    iget-object v3, v1, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v2, v3

    .line 193
    .local v2, val:Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 206
    .end local v0           #info:Lgnu/text/Options$OptionInfo;
    .end local v2           #val:Ljava/lang/Object;
    :goto_3
    return-object v3

    .line 191
    .restart local v0       #info:Lgnu/text/Options$OptionInfo;
    :cond_0
    iget-object v3, v1, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    iget-object v4, v0, Lgnu/text/Options$OptionInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    goto :goto_2

    .line 195
    .restart local v2       #val:Ljava/lang/Object;
    :cond_1
    iget-object v3, v0, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    instance-of v3, v3, Lgnu/text/Options$OptionInfo;

    if-eqz v3, :cond_2

    .line 196
    iget-object v0, v0, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    .end local v0           #info:Lgnu/text/Options$OptionInfo;
    check-cast v0, Lgnu/text/Options$OptionInfo;

    .restart local v0       #info:Lgnu/text/Options$OptionInfo;
    goto :goto_1

    .line 199
    :cond_2
    iget-object v3, v0, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 200
    iget-object p2, v0, Lgnu/text/Options$OptionInfo;->defaultValue:Ljava/lang/Object;

    .line 204
    :cond_3
    iget-object v1, v1, Lgnu/text/Options;->previous:Lgnu/text/Options;

    goto :goto_0

    .end local v0           #info:Lgnu/text/Options$OptionInfo;
    .end local v2           #val:Ljava/lang/Object;
    :cond_4
    move-object v3, p2

    .line 206
    goto :goto_3
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    .line 179
    .local v0, info:Lgnu/text/Options$OptionInfo;
    if-nez v0, :cond_0

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid option key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    invoke-virtual {p0, v0, p2}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getBoolean(Lgnu/text/Options$OptionInfo;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getBoolean(Lgnu/text/Options$OptionInfo;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 237
    if-eqz p2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    .line 238
    .local v0, defaultObject:Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Lgnu/text/Options$OptionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 237
    .end local v0           #defaultObject:Ljava/lang/Boolean;
    .restart local p0
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 226
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 231
    if-eqz p2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    .line 232
    .local v0, defaultObject:Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 231
    .end local v0           #defaultObject:Ljava/lang/Boolean;
    .restart local p0
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_0
.end method

.method public getDoc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    .line 300
    .local v0, info:Lgnu/text/Options$OptionInfo;
    if-nez p1, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 302
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lgnu/text/Options$OptionInfo;->documentation:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;
    .locals 2
    .parameter "key"

    .prologue
    .line 166
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 167
    .local v0, info:Lgnu/text/Options$OptionInfo;
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    invoke-virtual {v1, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    .line 169
    :cond_0
    check-cast v0, Lgnu/text/Options$OptionInfo;

    .end local v0           #info:Lgnu/text/Options$OptionInfo;
    return-object v0

    .line 166
    :cond_1
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/text/Options$OptionInfo;

    move-object v0, v1

    goto :goto_0
.end method

.method public getLocal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 221
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public keys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v3, p0

    .local v3, options:Lgnu/text/Options;
    :goto_0
    if-eqz v3, :cond_2

    .line 285
    iget-object v4, v3, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 287
    iget-object v4, v3, Lgnu/text/Options;->infoTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #k:Ljava/lang/String;
    :cond_1
    iget-object v3, v3, Lgnu/text/Options;->previous:Lgnu/text/Options;

    goto :goto_0

    .line 294
    :cond_2
    return-object v0
.end method

.method public popOptionValues(Ljava/util/Vector;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x3

    if-ltz v0, :cond_0

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 273
    .local v2, oldValue:Ljava/lang/Object;
    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 274
    invoke-virtual {p0, v1, v2}, Lgnu/text/Options;->reset(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #oldValue:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public pushOptionValues(Ljava/util/Vector;)V
    .locals 6
    .parameter "options"

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 256
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 258
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 260
    .local v4, newValue:Ljava/lang/Object;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p1, v4, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 261
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v0

    .line 262
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 263
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"

    .prologue
    .line 134
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 137
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "argument"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    .line 150
    .local v0, info:Lgnu/text/Options$OptionInfo;
    if-nez v0, :cond_0

    .line 151
    const-string v2, "unknown option name"

    .line 161
    :goto_0
    return-object v2

    .line 152
    :cond_0
    invoke-static {v0, p2}, Lgnu/text/Options;->valueOf(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 155
    iget v2, v0, Lgnu/text/Options$OptionInfo;->kind:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value of option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be yes/no/true/false/on/off/1/0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    .line 160
    :cond_2
    iget-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    .line 101
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "messages"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    .line 107
    .local v0, info:Lgnu/text/Options$OptionInfo;
    if-nez v0, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid option key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lgnu/text/Options;->error(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    .line 129
    .end local p2
    :goto_0
    return-void

    .line 112
    .restart local p2
    :cond_0
    iget v1, v0, Lgnu/text/Options$OptionInfo;->kind:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 114
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 115
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lgnu/text/Options;->valueOf(Lgnu/text/Options$OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 116
    .restart local p2
    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value for option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be boolean or yes/no/true/false/on/off/1/0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lgnu/text/Options;->error(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    goto :goto_0

    .line 124
    :cond_2
    if-nez p2, :cond_3

    .line 125
    const-string p2, ""

    .line 126
    .end local p2
    :cond_3
    iget-object v1, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    .line 128
    :cond_4
    iget-object v1, p0, Lgnu/text/Options;->valueTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
