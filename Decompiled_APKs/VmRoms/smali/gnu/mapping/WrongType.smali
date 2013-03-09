.class public Lgnu/mapping/WrongType;
.super Lgnu/mapping/WrappedException;
.source "WrongType.java"


# static fields
.field public static final ARG_CAST:I = -0x4

.field public static final ARG_DESCRIPTION:I = -0x3

.field public static final ARG_UNKNOWN:I = -0x1

.field public static final ARG_VARNAME:I = -0x2


# instance fields
.field public argValue:Ljava/lang/Object;

.field public expectedType:Ljava/lang/Object;

.field public number:I

.field public proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "n"
    .parameter "argValue"
    .parameter "expectedType"

    .prologue
    .line 85
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 86
    iput p1, p0, Lgnu/mapping/WrongType;->number:I

    .line 87
    iput-object p2, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V
    .locals 1
    .parameter "proc"
    .parameter "n"
    .parameter "ex"

    .prologue
    .line 54
    invoke-direct {p0, p3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 56
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 57
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .locals 1
    .parameter "proc"
    .parameter "n"
    .parameter "argValue"

    .prologue
    .line 68
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 69
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 70
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 71
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 72
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "proc"
    .parameter "n"
    .parameter "argValue"
    .parameter "expectedType"

    .prologue
    .line 76
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 77
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 78
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 79
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 80
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 81
    iput-object p4, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "proc"
    .parameter "n"
    .parameter "argValue"
    .parameter "expectedType"

    .prologue
    .line 93
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .locals 0
    .parameter "ex"
    .parameter "proc"
    .parameter "n"
    .parameter "argValue"

    .prologue
    .line 63
    invoke-direct {p0, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 64
    iput-object p4, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter "ex"
    .parameter "procname"
    .parameter "n"
    .parameter "argValue"

    .prologue
    .line 115
    invoke-direct {p0, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 116
    iput-object p4, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V
    .locals 0
    .parameter "procname"
    .parameter "n"
    .parameter "ex"

    .prologue
    .line 107
    invoke-direct {p0, p3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 109
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "procName"
    .parameter "n"
    .parameter "argValue"
    .parameter "expectedType"

    .prologue
    .line 98
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 99
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 100
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 101
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 102
    iput-object p4, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "u"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 48
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 49
    iput-object p3, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;I)Lgnu/mapping/WrongType;
    .locals 1
    .parameter "ex"
    .parameter "proc"
    .parameter "n"

    .prologue
    .line 122
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .locals 1
    .parameter "ex"
    .parameter "proc"
    .parameter "n"
    .parameter "argValue"

    .prologue
    .line 135
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 136
    .local v0, wex:Lgnu/mapping/WrongType;
    iput-object p3, v0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 137
    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;I)Lgnu/mapping/WrongType;
    .locals 1
    .parameter "ex"
    .parameter "procname"
    .parameter "n"

    .prologue
    .line 128
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .locals 1
    .parameter "ex"
    .parameter "procname"
    .parameter "n"
    .parameter "argValue"

    .prologue
    .line 144
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 145
    .local v0, wex:Lgnu/mapping/WrongType;
    iput-object p3, v0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 146
    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v7, -0x3

    .line 151
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 152
    .local v4, sbuf:Ljava/lang/StringBuffer;
    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    if-ne v5, v7, :cond_7

    .line 154
    iget-object v5, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_0
    :goto_0
    iget-object v5, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 171
    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v5, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, argString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_a

    .line 175
    const/4 v5, 0x0

    const/16 v6, 0x2f

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :goto_1
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    .end local v0           #argString:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    if-eq v5, v7, :cond_2

    .line 184
    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    if-ne v5, v8, :cond_b

    const-string v5, " for variable \'"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v5, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_2
    const-string v5, " has wrong type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v5, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 191
    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v5, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    iget-object v2, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 196
    .local v2, expectType:Ljava/lang/Object;
    if-nez v2, :cond_4

    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    if-lez v5, :cond_4

    iget-object v5, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    instance-of v5, v5, Lgnu/mapping/MethodProc;

    if-eqz v5, :cond_4

    .line 197
    iget-object v5, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    check-cast v5, Lgnu/mapping/MethodProc;

    iget v6, p0, Lgnu/mapping/WrongType;->number:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v2

    .line 198
    .end local v2           #expectType:Ljava/lang/Object;
    :cond_4
    if-eqz v2, :cond_5

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v2, v5, :cond_5

    .line 200
    const-string v5, " (expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    instance-of v5, v2, Lgnu/bytecode/Type;

    if-eqz v5, :cond_c

    .line 202
    check-cast v2, Lgnu/bytecode/Type;

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, expectType:Ljava/lang/String;
    move-object v5, v2

    .line 205
    .end local v2           #expectType:Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 206
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_5
    invoke-virtual {p0}, Lgnu/mapping/WrongType;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 209
    .local v1, ex:Ljava/lang/Throwable;
    if-eqz v1, :cond_6

    .line 211
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, msg:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 214
    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    .end local v3           #msg:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 156
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_7
    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    const/4 v6, -0x4

    if-eq v5, v6, :cond_8

    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    if-ne v5, v8, :cond_9

    .line 158
    :cond_8
    const-string v5, "Value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 162
    :cond_9
    const-string v5, "Argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    if-lez v5, :cond_0

    .line 165
    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    iget v5, p0, Lgnu/mapping/WrongType;->number:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 179
    .restart local v0       #argString:Ljava/lang/String;
    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 184
    .end local v0           #argString:Ljava/lang/String;
    :cond_b
    const-string v5, " to \'"

    goto/16 :goto_2

    .line 203
    :cond_c
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_d

    .line 204
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #expectType:Ljava/lang/String;
    move-object v5, v2

    goto :goto_3

    .end local v2           #expectType:Ljava/lang/String;
    :cond_d
    move-object v5, v2

    goto :goto_3
.end method
