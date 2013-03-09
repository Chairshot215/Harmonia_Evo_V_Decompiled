.class Lgnu/expr/SimplePrompter;
.super Lgnu/mapping/Procedure1;
.source "Language.java"


# instance fields
.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 963
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 965
    const-string v0, "["

    iput-object v0, p0, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    .line 966
    const-string v0, "] "

    iput-object v0, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg"

    .prologue
    .line 970
    instance-of v3, p1, Lgnu/mapping/InPort;

    if-eqz v3, :cond_0

    .line 972
    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    move-object v2, v0

    .line 973
    .local v2, port:Lgnu/mapping/InPort;
    invoke-virtual {v2}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 974
    .local v1, line:I
    if-ltz v1, :cond_0

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 977
    .end local v1           #line:I
    .end local v2           #port:Lgnu/mapping/InPort;
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    goto :goto_0
.end method
