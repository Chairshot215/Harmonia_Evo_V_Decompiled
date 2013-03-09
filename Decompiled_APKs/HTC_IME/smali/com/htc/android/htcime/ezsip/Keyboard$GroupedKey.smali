.class Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupedKey"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "GroupedKey"


# instance fields
.field group:I

.field mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/Keyboard;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/Keyboard;I)V
    .locals 1
    .parameter
    .parameter "g"

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->this$0:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    iput p2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->group:I

    .line 2027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    .line 2028
    return-void
.end method


# virtual methods
.method public DEBUG()V
    .locals 5

    .prologue
    .line 2031
    const-string v1, "GroupedKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->group:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2033
    const-string v2, "GroupedKey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeys.get(i).codes[0]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2034
    :cond_0
    return-void
.end method
