.class public Lcom/android/commands/monkey/MonkeySourceRandomScript;
.super Ljava/lang/Object;
.source "MonkeySourceRandomScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# instance fields
.field private mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mRandom:Ljava/util/Random;

.field private mRandomizeScript:Z

.field private mScriptCount:I

.field private mScriptSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/commands/monkey/MonkeySourceScript;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

.field private mVerbose:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v2, p6

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v12, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v2, p6

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/util/Random;",
            "JJZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceScript;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    if-le v1, v4, :cond_0

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandomizeScript:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mRandom:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    rem-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceScript;

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mCurrentSource:Lcom/android/commands/monkey/MonkeySourceScript;

    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptCount:I

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method public setVerbose(I)V
    .locals 3

    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mVerbose:I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v2, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v1, p1}, Lcom/android/commands/monkey/MonkeySourceScript;->setVerbose(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public validate()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mSetupSource:Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandomScript;->mScriptSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeySourceScript;->validate()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
