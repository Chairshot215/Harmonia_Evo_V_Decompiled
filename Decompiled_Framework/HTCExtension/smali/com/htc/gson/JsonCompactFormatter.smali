.class final Lcom/htc/gson/JsonCompactFormatter;
.super Ljava/lang/Object;
.source "JsonCompactFormatter.java"

# interfaces
.implements Lcom/htc/gson/JsonFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;
    }
.end annotation


# instance fields
.field private final escapeHtmlChars:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonCompactFormatter;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/htc/gson/JsonCompactFormatter;->escapeHtmlChars:Z

    return-void
.end method


# virtual methods
.method public format(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;

    new-instance v2, Lcom/htc/gson/Escaper;

    iget-boolean v3, p0, Lcom/htc/gson/JsonCompactFormatter;->escapeHtmlChars:Z

    invoke-direct {v2, v3}, Lcom/htc/gson/Escaper;-><init>(Z)V

    invoke-direct {v1, p2, v2, p3}, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;-><init>(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;Z)V

    new-instance v0, Lcom/htc/gson/JsonTreeNavigator;

    invoke-direct {v0, v1, p3}, Lcom/htc/gson/JsonTreeNavigator;-><init>(Lcom/htc/gson/JsonElementVisitor;Z)V

    invoke-virtual {v0, p1}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0
.end method
