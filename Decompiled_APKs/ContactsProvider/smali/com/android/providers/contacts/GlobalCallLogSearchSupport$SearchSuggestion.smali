.class Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "GlobalCallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalCallLogSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchSuggestion"
.end annotation


# instance fields
.field callId:J

.field contactId:J

.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field ext_account_type:Ljava/lang/String;

.field icon1:Ljava/lang/String;

.field icon2:Ljava/lang/String;

.field lookupKey:Ljava/lang/String;

.field normalizedName:Ljava/lang/String;

.field organization:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field photoUri:Landroid/net/Uri;

.field processed:Z

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;

.field titleIsName:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "calltId"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->contactId:J

    .line 127
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->callId:J

    iput-wide v0, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->callId:J

    .line 128
    return-void
.end method

.method private process()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 131
    iget-boolean v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->processed:Z

    if-eqz v8, :cond_0

    .line 162
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->organization:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v1, v6

    .line 136
    .local v1, hasOrganization:Z
    :goto_1
    iget-object v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->email:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move v0, v6

    .line 137
    .local v0, hasEmail:Z
    :goto_2
    iget-object v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v2, v6

    .line 139
    .local v2, hasPhone:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->titleIsName:Z

    if-nez v8, :cond_5

    if-eqz v1, :cond_5

    move v4, v6

    .line 140
    .local v4, titleIsOrganization:Z
    :goto_4
    iget-boolean v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->titleIsName:Z

    if-nez v8, :cond_6

    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    move v3, v6

    .line 141
    .local v3, titleIsEmail:Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->titleIsName:Z

    if-nez v8, :cond_7

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    move v5, v6

    .line 144
    .local v5, titleIsPhone:Z
    :goto_6
    if-nez v4, :cond_8

    if-eqz v1, :cond_8

    .line 145
    iget-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->organization:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 152
    :cond_1
    :goto_7
    iget-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    if-eqz v7, :cond_a

    .line 153
    iget-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 159
    :goto_8
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    .line 161
    iput-boolean v6, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->processed:Z

    goto :goto_0

    .end local v0           #hasEmail:Z
    .end local v1           #hasOrganization:Z
    .end local v2           #hasPhone:Z
    .end local v3           #titleIsEmail:Z
    .end local v4           #titleIsOrganization:Z
    .end local v5           #titleIsPhone:Z
    :cond_2
    move v1, v7

    .line 135
    goto :goto_1

    .restart local v1       #hasOrganization:Z
    :cond_3
    move v0, v7

    .line 136
    goto :goto_2

    .restart local v0       #hasEmail:Z
    :cond_4
    move v2, v7

    .line 137
    goto :goto_3

    .restart local v2       #hasPhone:Z
    :cond_5
    move v4, v7

    .line 139
    goto :goto_4

    .restart local v4       #titleIsOrganization:Z
    :cond_6
    move v3, v7

    .line 140
    goto :goto_5

    .restart local v3       #titleIsEmail:Z
    :cond_7
    move v5, v7

    .line 141
    goto :goto_6

    .line 146
    .restart local v5       #titleIsPhone:Z
    :cond_8
    if-nez v5, :cond_9

    if-eqz v2, :cond_9

    .line 147
    iget-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    goto :goto_7

    .line 148
    :cond_9
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 149
    iget-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->email:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    goto :goto_7

    .line 156
    :cond_a
    const v7, 0x7f020001

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto :goto_8
.end method
