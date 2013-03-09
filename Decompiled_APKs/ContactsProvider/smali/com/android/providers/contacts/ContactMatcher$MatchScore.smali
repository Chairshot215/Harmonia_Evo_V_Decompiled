.class public Lcom/android/providers/contacts/ContactMatcher$MatchScore;
.super Ljava/lang/Object;
.source "ContactMatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mKeepIn:Z

.field private mKeepOut:Z

.field private mMatchCount:I

.field private mPrimaryDataMatch:Ljava/lang/String;

.field private mPrimaryDataOri:Ljava/lang/String;

.field private mPrimaryScore:I

.field private mRawListIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryDataMatch:Ljava/lang/String;

.field private mSecondaryDataOri:Ljava/lang/String;

.field private mSecondaryScore:I


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-wide p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataOri:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataMatch:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataOri:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataMatch:Ljava/lang/String;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getScore()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->compareTo(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J

    return-wide v0
.end method

.method public getRawListIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScore()I
    .locals 3

    .prologue
    .line 258
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1

    .line 262
    :cond_0
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z

    if-eqz v1, :cond_1

    .line 263
    const/16 v1, 0x64

    goto :goto_0

    .line 266
    :cond_1
    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    if-le v1, v2, :cond_2

    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    .line 270
    .local v0, score:I
    :goto_1
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mMatchCount:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 266
    .end local v0           #score:I
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    goto :goto_1
.end method

.method public keepIn()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z

    .line 251
    return-void
.end method

.method public keepOut()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z

    .line 255
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    iput-wide p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J

    .line 198
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z

    .line 201
    iput v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    .line 202
    iput v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    .line 203
    iput v1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mMatchCount:I

    .line 205
    iput-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataOri:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataMatch:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataOri:Ljava/lang/String;

    .line 208
    iput-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataMatch:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "contactId with raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v2, "---has primary score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataOri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataMatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "---has secondary score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataOri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v2, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataMatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updatePrimaryScore(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "score"
    .parameter "raw_id"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 222
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    if-le p1, v0, :cond_0

    .line 223
    iput p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I

    .line 224
    iput-object p4, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataOri:Ljava/lang/String;

    .line 225
    iput-object p5, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryDataMatch:Ljava/lang/String;

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mMatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mMatchCount:I

    .line 229
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    return-void
.end method

.method public updateSecondaryScore(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "score"
    .parameter "raw_id"
    .parameter "dataFrom"
    .parameter "dataTo"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    if-le p1, v0, :cond_0

    .line 236
    iput p1, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I

    .line 237
    iput-object p4, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataOri:Ljava/lang/String;

    .line 238
    iput-object p5, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryDataMatch:Ljava/lang/String;

    .line 240
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mMatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mMatchCount:I

    .line 242
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mRawListIds:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    return-void
.end method
