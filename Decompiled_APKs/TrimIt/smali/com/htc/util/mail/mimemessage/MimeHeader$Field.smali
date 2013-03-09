.class Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/mimemessage/MimeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Field"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/util/mail/mimemessage/MimeHeader;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/mimemessage/MimeHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "value"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->this$0:Lcom/htc/util/mail/mimemessage/MimeHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->value:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
