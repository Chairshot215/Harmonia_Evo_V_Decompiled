.class Lcom/futuredial/fbus/NokiaObexSMS$Message;
.super Ljava/lang/Object;
.source "NokiaObexSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/NokiaObexSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Message"
.end annotation


# instance fields
.field public m_arrayNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_bLongMsg:Z

.field public m_iBoxType:I

.field public m_iLSMSID:I

.field public m_iLSMSSliceInAll:I

.field public m_iLSMSSubID:I

.field public m_iStatus:I

.field public m_strContent:Ljava/lang/String;

.field public m_strTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/fbus/NokiaObexSMS;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/NokiaObexSMS;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    iput-object p1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strTime:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strContent:Ljava/lang/String;

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iBoxType:I

    .line 106
    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iStatus:I

    .line 107
    iput-boolean v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_bLongMsg:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSID:I

    .line 109
    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSSliceInAll:I

    .line 110
    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSSubID:I

    .line 111
    return-void
.end method


# virtual methods
.method public AddMessageToItem(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 8
    .parameter "itemArray"

    .prologue
    const/4 v7, 0x3

    .line 177
    new-instance v1, Lcom/futuredial/publicobj/Item;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 179
    .local v1, item:Lcom/futuredial/publicobj/Item;
    iget-object v5, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strTime:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strTime:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 181
    :cond_0
    iget-object v5, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 184
    .local v4, size:I
    new-instance v2, Lcom/futuredial/publicobj/Field;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 185
    .local v2, numProperty:Lcom/futuredial/publicobj/Field;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 187
    new-instance v3, Lcom/futuredial/publicobj/Field;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v6, v5}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 188
    .local v3, number:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v2, v3}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v3           #number:Lcom/futuredial/publicobj/Field;
    :cond_1
    invoke-virtual {v1, v2}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 193
    .end local v0           #index:I
    .end local v2           #numProperty:Lcom/futuredial/publicobj/Field;
    .end local v4           #size:I
    :cond_2
    iget-object v5, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strContent:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strContent:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 194
    :cond_3
    const/4 v5, 0x2

    iget v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iBoxType:I

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 195
    const/4 v5, 0x1

    iget v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iStatus:I

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 199
    const v5, 0xf3e59

    iget v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSID:I

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 200
    const v5, 0xf3e5a

    iget v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSSubID:I

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 201
    const v5, 0xf3e5b

    iget v6, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSSliceInAll:I

    invoke-virtual {v1, v5, v6}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 204
    invoke-virtual {p1, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 205
    return-void
.end method

.method public InitializeMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "iBoxType"
    .parameter "strNum"
    .parameter "strSMSTime"
    .parameter "strContent"

    .prologue
    .line 167
    iput p1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iBoxType:I

    .line 168
    iget-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iput-object p4, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strContent:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iStatus:I

    .line 172
    iput-object p3, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strTime:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public InitializeMessage(ILjava/util/ArrayList;Ljava/lang/String;Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;)V
    .locals 3
    .parameter "iBoxType"
    .parameter
    .parameter "strSMSTime"
    .parameter "sms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, arrayNum:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput p1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iBoxType:I

    .line 128
    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_arrayNumber:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {p4}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strContent:Ljava/lang/String;

    .line 132
    invoke-virtual {p4}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getStatus()I

    move-result v1

    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iStatus:I

    .line 133
    iput-object p3, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_strTime:Ljava/lang/String;

    .line 141
    invoke-virtual {p4}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getUserDataHeader()Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    move-result-object v0

    .line 142
    .local v0, udhi:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_bLongMsg:Z

    .line 144
    iget-object v1, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSID:I

    .line 145
    iget-object v1, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSSliceInAll:I

    .line 146
    iget-object v1, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget v1, v1, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSSubID:I

    .line 153
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    #getter for: Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/futuredial/fbus/NokiaObexSMS;->access$000(Lcom/futuredial/fbus/NokiaObexSMS;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 155
    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    iget v2, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/futuredial/fbus/NokiaObexSMS;->access$002(Lcom/futuredial/fbus/NokiaObexSMS;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    #getter for: Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z
    invoke-static {v1}, Lcom/futuredial/fbus/NokiaObexSMS;->access$100(Lcom/futuredial/fbus/NokiaObexSMS;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    #getter for: Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/futuredial/fbus/NokiaObexSMS;->access$000(Lcom/futuredial/fbus/NokiaObexSMS;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSID:I

    if-eq v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    iget v2, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_iLSMSID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/futuredial/fbus/NokiaObexSMS;->access$002(Lcom/futuredial/fbus/NokiaObexSMS;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 160
    iget-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS$Message;->this$0:Lcom/futuredial/fbus/NokiaObexSMS;

    const/4 v2, 0x0

    #setter for: Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z
    invoke-static {v1, v2}, Lcom/futuredial/fbus/NokiaObexSMS;->access$102(Lcom/futuredial/fbus/NokiaObexSMS;Z)Z

    goto :goto_0
.end method
