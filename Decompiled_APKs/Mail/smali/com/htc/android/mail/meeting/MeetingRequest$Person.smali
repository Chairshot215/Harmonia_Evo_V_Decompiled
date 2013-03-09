.class public Lcom/htc/android/mail/meeting/MeetingRequest$Person;
.super Ljava/lang/Object;
.source "MeetingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/MeetingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Person"
.end annotation


# instance fields
.field public addr:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createString(Lcom/htc/android/mail/meeting/MeetingRequest$Person;)Ljava/lang/String;
    .locals 6
    .parameter "person"

    .prologue
    const/4 v3, 0x0

    .line 44
    if-nez p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 48
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MeetingRequest"

    const-string v5, "createString null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 53
    .local v1, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    .line 54
    .local v0, addr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, split:[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 57
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 61
    .end local v2           #split:[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, strPerson:Ljava/lang/String;
    goto :goto_0
.end method

.method public static createString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/meeting/MeetingRequest$Person;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, personList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/meeting/MeetingRequest$Person;>;"
    const/4 v4, 0x0

    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v4

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 72
    .local v2, person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    invoke-static {v2}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->createString(Lcom/htc/android/mail/meeting/MeetingRequest$Person;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    if-nez v0, :cond_3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    :cond_3
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    .end local v2           #person:Lcom/htc/android/mail/meeting/MeetingRequest$Person;
    .end local v3           #str:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->name:Ljava/lang/String;

    .line 101
    :goto_0
    return-object v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;->addr:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, splite:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 99
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method
