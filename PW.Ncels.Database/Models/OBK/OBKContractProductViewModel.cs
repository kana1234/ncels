﻿using System;
using System.Collections.Generic;

namespace PW.Ncels.Database.Models.OBK
{
    public class OBKContractProductViewModel
    {
        public int? ProductId { get; set; }
        public int? Id { get; set; }
        public int RegTypeId { get; set; }
        public int? DegreeRiskId { get; set; }
        public string NameRu { get; set; }
        public string NameKz { get; set; }
        public string ProducerNameRu { get; set; }
        public string ProducerNameKz { get; set; }
        public string CountryNameRu { get; set; }
        public string CountryNameKz { get; set; }
        public string TnvedCode { get; set; }
        public string KpvedCode { get; set; }
        public string Price { get; set; }
        public Guid? Currency { get; set; }
        public List<OBKContractSeriesViewModel> Series { get; set; }
    }
}