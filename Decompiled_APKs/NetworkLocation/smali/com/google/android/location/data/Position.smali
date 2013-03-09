.class public Lcom/google/android/location/data/Position;
.super Ljava/lang/Object;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/data/Position$PositionBuilder;
    }
.end annotation


# static fields
.field public static final SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/data/Position;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accuracyMm:I

.field public final confidence:I

.field public final latE7:I

.field public final levelId:Ljava/lang/String;

.field public final levelNumberE3:I

.field public final lngE7:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/location/data/Position$1;

    invoke-direct {v0}, Lcom/google/android/location/data/Position$1;-><init>()V

    sput-object v0, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "accuracyMm"

    .prologue
    .line 143
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/data/Position;-><init>(IIIILjava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "accuracyMm"
    .parameter "confidence"

    .prologue
    .line 131
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/data/Position;-><init>(IIIILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 7
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "accuracyMm"
    .parameter "confidence"
    .parameter "levelId"

    .prologue
    .line 117
    const/high16 v6, -0x8000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/data/Position;-><init>(IIIILjava/lang/String;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 0
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "accuracyMm"
    .parameter "confidence"
    .parameter "levelId"
    .parameter "levelNumberE3"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/google/android/location/data/Position;->latE7:I

    .line 96
    iput p2, p0, Lcom/google/android/location/data/Position;->lngE7:I

    .line 97
    iput p3, p0, Lcom/google/android/location/data/Position;->accuracyMm:I

    .line 98
    iput p4, p0, Lcom/google/android/location/data/Position;->confidence:I

    .line 99
    iput-object p5, p0, Lcom/google/android/location/data/Position;->levelId:Ljava/lang/String;

    .line 100
    iput p6, p0, Lcom/google/android/location/data/Position;->levelNumberE3:I

    .line 101
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/Position;)V
    .locals 2
    .parameter "sb"
    .parameter "position"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v0, "[latE7="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v0, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, ", lngE7="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v0, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, ", acc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v0, p1, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "mm, conf="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v0, p1, Lcom/google/android/location/data/Position;->confidence:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, ", levelId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p1, Lcom/google/android/location/data/Position;->levelId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v0, ", levelNumberE3="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v0, p1, Lcom/google/android/location/data/Position;->levelNumberE3:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_1

    .line 174
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_1
    iget v0, p1, Lcom/google/android/location/data/Position;->levelNumberE3:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/Position;)V
    .locals 2
    .parameter "out"
    .parameter "position"

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v0, "[latE7="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget v0, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 188
    const-string v0, ", lngE7="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget v0, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 190
    const-string v0, ", acc="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget v0, p1, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 192
    const-string v0, "mm, conf="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget v0, p1, Lcom/google/android/location/data/Position;->confidence:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 194
    const-string v0, ", levelId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Lcom/google/android/location/data/Position;->levelId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    const-string v0, ", levelNumberE3="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget v0, p1, Lcom/google/android/location/data/Position;->levelNumberE3:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_1

    .line 198
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    :goto_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget v0, p1, Lcom/google/android/location/data/Position;->levelNumberE3:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_1
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/location/data/Position;->accuracyMm:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    const-string v0, "NetworkLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position [latE7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/Position;->latE7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lngE7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/Position;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", levelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/Position;->levelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", levelNumberE3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/Position;->levelNumberE3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Position [redacted]"

    goto :goto_0
.end method
