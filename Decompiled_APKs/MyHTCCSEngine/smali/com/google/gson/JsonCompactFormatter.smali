.class final Lcom/google/gson/JsonCompactFormatter;
.super Ljava/lang/Object;
.source "JsonCompactFormatter.java"

# interfaces
.implements Lcom/google/gson/JsonFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;
    }
.end annotation


# instance fields
.field private final escapeHtmlChars:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/JsonCompactFormatter;-><init>(Z)V

    .line 134
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "escapeHtmlChars"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean p1, p0, Lcom/google/gson/JsonCompactFormatter;->escapeHtmlChars:Z

    .line 138
    return-void
.end method


# virtual methods
.method public format(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;Z)V
    .locals 4
    .parameter "root"
    .parameter "writer"
    .parameter "serializeNulls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v1, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;

    new-instance v2, Lcom/google/gson/Escaper;

    iget-boolean v3, p0, Lcom/google/gson/JsonCompactFormatter;->escapeHtmlChars:Z

    invoke-direct {v2, v3}, Lcom/google/gson/Escaper;-><init>(Z)V

    invoke-direct {v1, p2, v2, p3}, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;-><init>(Ljava/lang/Appendable;Lcom/google/gson/Escaper;Z)V

    .line 147
    .local v1, visitor:Lcom/google/gson/JsonElementVisitor;
    new-instance v0, Lcom/google/gson/JsonTreeNavigator;

    invoke-direct {v0, v1, p3}, Lcom/google/gson/JsonTreeNavigator;-><init>(Lcom/google/gson/JsonElementVisitor;Z)V

    .line 148
    .local v0, navigator:Lcom/google/gson/JsonTreeNavigator;
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0
.end method
