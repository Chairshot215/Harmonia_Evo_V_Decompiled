.class public Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
.super Ljava/lang/Object;
.source "SoundSetDetail.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/sdm/activity/SoundSetDetail$SoundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "[SoundData] "


# instance fields
.field private m_fd:Ljava/io/FileDescriptor;

.field private m_order:I

.field private m_soundParcelable:Lcom/htc/sdm/SoundSetParcelable;

.field private m_soundText:Ljava/lang/String;

.field private m_soundType:I

.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;ILjava/lang/String;Lcom/htc/sdm/SoundSetParcelable;I)V
    .locals 1
    .parameter
    .parameter "soundType"
    .parameter "soundText"
    .parameter "soundSetParcelable"
    .parameter "order"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p2, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_soundType:I

    .line 291
    iput p5, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_order:I

    .line 292
    iput-object p3, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_soundText:Ljava/lang/String;

    .line 293
    iput-object p4, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_soundParcelable:Lcom/htc/sdm/SoundSetParcelable;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_fd:Ljava/io/FileDescriptor;

    .line 295
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/sdm/activity/SoundSetDetail$SoundData;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 303
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_order:I

    iget v1, p1, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_order:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    check-cast p1, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->compareTo(Lcom/htc/sdm/activity/SoundSetDetail$SoundData;)I

    move-result v0

    return v0
.end method

.method public getFd()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getParcelable()Lcom/htc/sdm/SoundSetParcelable;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_soundParcelable:Lcom/htc/sdm/SoundSetParcelable;

    return-object v0
.end method

.method public getSoundText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_soundText:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundType()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_soundType:I

    return v0
.end method

.method public setFd(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;->m_fd:Ljava/io/FileDescriptor;

    .line 314
    return-void
.end method
