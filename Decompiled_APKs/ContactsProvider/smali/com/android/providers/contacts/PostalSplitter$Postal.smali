.class public Lcom/android/providers/contacts/PostalSplitter$Postal;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/PostalSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Postal"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public neighborhood:Ljava/lang/String;

.field public pobox:Ljava/lang/String;

.field public postcode:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromValues(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 42
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    .line 43
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    .line 44
    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    .line 45
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    .line 46
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    .line 47
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    .line 48
    const-string v0, "data10"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 52
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "data5"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "data6"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "data7"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "data8"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "data9"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "data10"

    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
